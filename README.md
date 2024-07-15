<h3 align=center>
    <img src="https://static.wikia.nocookie.net/scape-and-run-parasites/images/5/55/SRP_Logo2.png/revision/latest/scale-to-width-down/568?cb=20220206203645">
</h3>

<h2 align=center>
    <i>
        Infestation, a modpack around the <a href="https://modrinth.com/mod/scapeandrunparasites">parasites</a>
    </i>
</h2>

#### Here's how to get a client build:

```nushell
packwiz modrinth export   # Get a build in `.mrpack` format.
packwiz curseforge export # Get a build in `.zip` format.
```

Or obtain one from the releases (TODO!)

#### Here's how to use the server:

```nushell
# You can use Just scripts [https://just.systems]:
just restart # (Re)start the server.
just --list  # View other available recipes.

# Or plain docker compose.
docker compose up --detach   # Start the server.
docker compose down          # Stop the server.
docker compose logs --follow # View the server's logs.
```
