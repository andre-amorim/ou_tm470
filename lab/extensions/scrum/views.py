from fastapi import Request
from fastapi.responses import HTMLResponse
from lnbits.core.models import User
from lnbits.decorators import check_user_exists

from . import scrum_ext

@scrum_ext.get("/", response_class=HTMLResponse)
async def scrum_index(request: Request):
    html_content = """
    <!DOCTYPE html>
    <html>
    <head>
        <title>nixB Didactic Laboratory - Scrum & Kanban</title>
        <meta charset="utf-8">
        <style>
            body { font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif; background: #0f172a; color: #f8fafc; padding: 2rem; }
            h1 { color: #38bdf8; }
            .card { background: #1e293b; border-radius: 8px; padding: 1.5rem; margin-bottom: 1rem; border: 1px solid #334155; }
            .badge { background: #0284c7; padding: 0.2rem 0.6rem; border-radius: 4px; font-size: 0.85rem; font-weight: bold; }
            .grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 1rem; }
            .metric { font-size: 1.8rem; font-weight: bold; color: #38bdf8; }
        </style>
    </head>
    <body>
        <h1>🏰 nixB Didactic Laboratory: LNbits Scrum Extension</h1>
        <p>Integration Object running inside declarative Nix environment.</p>
        <div class="grid">
            <div class="card">
                <h3>⚡ Lightning Network</h3>
                <div class="metric">Connected</div>
                <p>Core Lightning Node attached to Regtest.</p>
            </div>
            <div class="card">
                <h3>🧱 Bitcoin Core</h3>
                <div class="metric">101 Blocks</div>
                <p>Coinbase mature and ready for escrow stakes.</p>
            </div>
            <div class="card">
                <h3>📋 Scrumban Tasks</h3>
                <div class="metric">6 Cards</div>
                <p>Tracked via Open Knowledge Format (OKF v0.2).</p>
            </div>
        </div>
    </body>
    </html>
    """
    return HTMLResponse(content=html_content)
