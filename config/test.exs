use Mix.Config

config :pigeon,
  gcm_key: System.get_env("GCM_KEY")
