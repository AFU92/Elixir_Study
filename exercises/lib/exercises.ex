defmodule Exercises do
  @moduledoc """
  Documentation for Exercises.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Exercises.hello
      :world

  """
  def hello do
    :world
  end


  @spec example_case1(any()) :: {:error, <<_::160>>} | {:ok, <<_::64, _::_*16>>}
  def example_case1(value) do

    case value do
      {x, _, _} when is_integer(x) ->  {:ok, "El primer elemento es #{x} y es entero"}
      {x, _, _} ->  {:ok, "El primer elemento es #{x} y mo es entero"}
      # {3,4,5} -> {:ok, "Otro msj"}
      _ -> {:error, "Opcion no valida wey"}
    end
  end

  @spec example_cond1(any()) :: {:error, <<_::224>>} | {:ok, <<_::64, _::_*8>>}
  def example_cond1(value) when is_integer(value) do

    cond do
      value > 0 and value <= 100 -> {:ok, "Valor esta entre 0 y 100"}
      value > 100 and value <=200 -> {:ok, "Valor entre 101 y 200"}
      value > 200 -> {:ok, "Valor mayor a 200"}
      true -> {:error, "Esta condicion no aplica wey"}
    end
  end

  def example_cond1(_) do
    {:error, "El valor ingresado no es un entero"}
  end

  @spec example_case2(any()) :: {:error, <<_::224>>} | {:ok, <<_::64, _::_*8>>}
  def example_case2(value) do

    case value do
      x when x > 0 and x <= 100 -> {:ok, "Valor esta entre 0 y 100"}
      x when x > 100 and x <=200 -> {:ok, "Valor entre 101 y 200"}
      x when x > 200 -> {:ok, "Valor mayor a 200"}
      _ -> {:error, "Esta condicion no aplica wey"}
    end
  end

end

