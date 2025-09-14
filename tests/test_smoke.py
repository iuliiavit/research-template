from project_name import hello, __version__

def test_package_imports():
    assert isinstance(__version__, str)

def test_hello():
    assert hello() == "hello"
