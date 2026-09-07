from fastapi import APIRouter
from lnbits.decorators import check_admin

from . import scrum_ext

@scrum_ext.get("/api/v1/health")
async def api_scrum_health():
    return {
        "status": "ok",
        "extension": "scrum",
        "description": "nixB Didactic Scrum & Kanban Board",
        "version": "0.1.0"
    }

@scrum_ext.get("/api/v1/tasks")
async def api_scrum_tasks():
    return {
        "tasks": [
            {"id": "021", "title": "Unified Root Flake Architecture", "status": "In Progress", "points": 5},
            {"id": "022", "title": "Hermetic OER Codelab Compiler (.#oer)", "status": "In Progress", "points": 3},
            {"id": "023", "title": "Regtest Daemons Lifecycle Supervisor (.#lab)", "status": "In Progress", "points": 5},
            {"id": "012", "title": "Integrate LNbits Backend with Nix and uv", "status": "In Progress", "points": 8},
            {"id": "024", "title": "Unified Bootstrap Orchestrator (.#bootstrap)", "status": "In Progress", "points": 3},
            {"id": "025", "title": "Automated V&V Smoke Test Suite", "status": "Backlog", "points": 3}
        ]
    }
