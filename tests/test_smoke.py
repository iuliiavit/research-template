from project_name import __version__, hello


def test_package_imports():
    assert isinstance(__version__, str)


def test_hello():
    assert hello() == "hello"
