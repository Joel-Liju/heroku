from flask import Flask
import os
app = Flask(__name__)

@app.route('/')
def tester():
  return "<h1> Let's go baby!</h1>"

if __name__=="__main__":
  app.run(host='0.0.0.0', port = os.environ.get('PORT'))