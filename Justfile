# List available recipes.
default:
    @just --list

# Refresh the `pack.toml` and `index.toml` files, stage git changes.
refresh:
    packwiz refresh
    @git add .
    @git status

# (Re)start the server's container.
restart:
    docker compose down
    docker compose up --detach --build
    docker compose logs --follow

# Remove any exported packs.
clean:
    rm -f *.mrpack

# Export the modpack in `.mrpack` format.
export: refresh
    packwiz modrinth export --output Infestation.mrpack
