"""Request and response bodies. These also produce the OpenAPI schema."""
from typing import Literal, Optional

from pydantic import BaseModel, Field

TrackerStatus = Literal['new', 'in-progress', 'complete']
TrackerPriority = Literal['low', 'normal', 'high']


class TrackerCreate(BaseModel):
    title: str = Field(min_length=1, max_length=400)
    reference: str = Field(default="", max_length=200)
    status: TrackerStatus = 'new'
    priority: TrackerPriority = 'normal'


class TrackerUpdate(BaseModel):
    title: Optional[str] = Field(default=None, min_length=1, max_length=400)
    reference: Optional[str] = Field(default=None, max_length=200)
    status: Optional[TrackerStatus] = None
    priority: Optional[TrackerPriority] = None


class Tracker(TrackerCreate):
    id: int
