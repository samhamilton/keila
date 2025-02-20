defmodule Keila.Contacts.Form.Settings do
  use Ecto.Schema
  import Ecto.Changeset

  @type t :: %__MODULE__{}

  embedded_schema do
    field(:captcha_required, :boolean, default: true)
    field(:csrf_disabled, :boolean, default: true)
    field(:intro_text, :string)
    field(:fine_print, :string)
    field(:body_bg_color, :string, default: "#e5e7eb")
    field(:form_bg_color, :string, default: "#f9fafb")
    field(:text_color, :string, default: "#111827")
    field(:submit_label, :string, default: "Submit")
    field(:submit_bg_color, :string, default: "#047857")
    field(:submit_text_color, :string, default: "#f9fafb")
    field(:input_bg_color, :string, default: "#ffffff")
    field(:input_border_color, :string, default: "#6b7280")
    field(:input_text_color, :string, default: "#111827")
    field(:success_text, :string)
  end

  def changeset(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, [
      :captcha_required,
      :csrf_disabled,
      :intro_text,
      :fine_print,
      :body_bg_color,
      :form_bg_color,
      :text_color,
      :input_text_color,
      :input_bg_color,
      :input_border_color,
      :submit_label,
      :submit_bg_color,
      :submit_text_color,
      :success_text
    ])
  end
end
