defmodule Letter do
  @moduledoc """
  Documentação para o módulo `Letter`.
  """

  def compare(input, palavra) do
    compare(input,palavra,[],palavra)
  end


  defp compare([], [], saida, _) do
    saida
  end

  defp compare([a | b], [c | d] , saida, palavra) when a == c do
      compare(b, d, saida ++ [1], palavra)
  end

  defp compare([a | b], [c | d] , saida , palavra) when a != c do
      case exists?(a,palavra) do
        true ->
          compare(b, d, saida ++ [0], palavra)
        false ->
          compare(b, d, saida ++ [2], palavra)
      end
  end

  defp exists?(_, []) do
    false
  end

  defp exists?(elemento,[a | b]) do
    case [elemento] == a do
      true ->
        true
      false ->
        exists?(elemento,b)
    end
  end

end
