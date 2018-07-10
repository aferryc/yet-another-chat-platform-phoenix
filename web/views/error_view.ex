defmodule Chat.ErrorView do
  use Chat.Web, :view

  def render("404.html", _assigns) do
<<<<<<< HEAD
    "Page not found"
  end

  def render("500.html", _assigns) do
    "Server internal error"
=======
    "Page not found - 404"
  end

  def render("500.html", _assigns) do
    "Server internal error - 500"
>>>>>>> 7fb1d3d040b9d1e9a1bbd239c60ca1f4dd403c24
  end

  # In case no render clause matches or no
  # template is found, let's render it as 500
<<<<<<< HEAD
  def template_not_found(_template, assigns) do
=======
  def template_not_found(_, assigns) do
>>>>>>> 7fb1d3d040b9d1e9a1bbd239c60ca1f4dd403c24
    render "500.html", assigns
  end
end
