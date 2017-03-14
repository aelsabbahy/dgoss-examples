#!/usr/bin/env python

import os
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'hello world'

if __name__ == '__main__':
    app.run(debug=os.environ.get('DEBUG'),host='0.0.0.0')
