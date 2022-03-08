from flask import Flask

@app.route('/')
def tester():
  return "<h1> Hello world!</h1>"