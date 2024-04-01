defmodule Hello.ShoppingCart.Cart do
  use Ecto.Schema
  import Ecto.Changeset

  schema "carts" do

    # set user_uuid to user id
    # field :user_uuid, :string
    belongs_to :user, Hello.Accounts.User

    has_many :items, Hello.ShoppingCart.CartItem

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(cart, attrs) do
    cart
    |> cast(attrs, [:user_id])
    |> validate_required([:user_id])
    # cart
    # |> cast(attrs, [:user_uuid])
    # |> validate_required([:user_uuid])
    # |> unique_constraint(:user_uuid)

  end
end
