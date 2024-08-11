import importlib.metadata

from config import settings


def test_version():
    expected_version = importlib.metadata.version("fastapi-hello-world-app")
    assert settings.version == expected_version
