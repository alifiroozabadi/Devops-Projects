from flask import Flask, jsonify
import psutil
from datetime import datetime
import ssl

app = Flask(__name__)

@app.route('/get_time')
def get_time():
    current_time = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    return jsonify({"current_time": current_time})

@app.route('/get_disks')
def get_disks():
    disk_info = []
    partitions = psutil.disk_partitions()

    for partition in partitions:
        partition_info = psutil.disk_usage(partition.mountpoint)
        disk_info.append({
            "device": partition.device,
            "mountpoint": partition.mountpoint,
            "total": partition_info.total,
            "used": partition_info.used,
            "free": partition_info.free
        })

    return jsonify({"disks": disk_info})

if __name__ == '__main__':
    context = ssl.SSLContext(ssl.PROTOCOL_TLS)
    context.load_cert_chain(certfile='/app/cert.pem', keyfile='/app/key.pem')

    app.run(host='0.0.0.0', port=443, ssl_context=context)
