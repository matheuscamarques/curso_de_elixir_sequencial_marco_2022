defmodule Letter do
  alias Letter.Utils
  @moduledoc """
  Documentação para o módulo `Letter`.
  """
  @wrong 0
  @correct 1
  @wrong_position 2

  def compare(input, palavra) do
    compare(input,palavra,[],palavra)
  end


  defp compare([], [], saida, _) do
    saida
  end

  defp compare([a | b], [c | d] , saida, palavra) when a == c do
      compare(b, d, saida ++ [@correct], palavra)
  end

  defp compare([a | b], [c | d] , saida , palavra) when a != c do
      case Utils.exists?(a,palavra) do
        true ->
          compare(b, d, saida ++ [@wrong], palavra)
        false ->
          compare(b, d, saida ++ [@wrong_position], palavra)
      end
  end

end
