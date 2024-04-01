defmodule Hello.Repo.Migrations.CreateCarts do
  use Ecto.Migration

  def change do
    create table(:carts) do
      add :user_id, :uuid

      timestamps(type: :utc_datetime)
    end

    create unique_index(:carts, [:user_id])
  end
end
