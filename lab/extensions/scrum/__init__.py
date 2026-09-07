import asyncio
from fastapi import APIRouter
from loguru import logger

scrum_ext: APIRouter = APIRouter(prefix="/scrum", tags=["scrum"])

scrum_static_files = [
    {
        "path": "/scrum/static",
        "name": "scrum_static",
    }
]

def scrum_start():
    logger.info("Initializing Scrum Board extension for nixB laboratory...")

from .views import *
from .views_api import *
