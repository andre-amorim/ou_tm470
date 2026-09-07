# Migrations for LNbits Scrum extension
async def m001_initial(db):
    await db.execute(
        """
        CREATE TABLE IF NOT EXISTS scrum.cards (
            id TEXT PRIMARY KEY,
            title TEXT NOT NULL,
            status TEXT NOT NULL,
            points INTEGER NOT NULL
        );
        """
    )
