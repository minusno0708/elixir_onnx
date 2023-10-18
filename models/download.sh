if [ -d "venv" ]; then
    source venv/bin/activate
else
    python -m venv venv
    source venv/bin/activate
    pip install -r requirements.txt
fi

yolo task=detect mode=export model=yolov8n.pt format=onnx