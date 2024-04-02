defmodule Hello.ShoppingCart.Cart do
  use Ecto.Schema
  import Ecto.Changeset

  schema "carts" do

    belongs_to :user, Hello.Accounts.User

    has_many :items, Hello.ShoppingCart.CartItem

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(cart, attrs) do
    cart
    |> cast(attrs, [:user_id])
    |> validate_required([:user_id])
  end
end
