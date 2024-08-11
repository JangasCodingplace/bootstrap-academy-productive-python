import importlib.metadata

from pydantic_settings import BaseSettings, SettingsConfigDict

try:
    from dotenv import load_dotenv

    load_dotenv(override=True)
except ImportError:
    pass


class Settings(BaseSettings):
    """Application settings."""

    app_name: str

    model_config = SettingsConfigDict(
        frozen=True,
        env_nested_delimiter="__",
    )

    @property
    def version(self):
        return importlib.metadata.version(self.app_name)


settings = Settings()  # type: ignore[call-arg]
