defmodule Letter.Utils do
  def exists?(_, []) do
    false
  end

  def exists?(elemento,[a | b]) do
    case [elemento] == a do
      true ->
        true
      false ->
        exists?(elemento,b)
    end
  end
end
