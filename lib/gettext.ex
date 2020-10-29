defmodule GettextCompile.Gettext do
  use Gettext, otp_app: :gettext_compile, one_module_per_locale: true
end
