
from typing import List

from fastapi import APIRouter

from app.api.routes import (
    ADMIN,
    PROVISIONERS,
    READERS
)
from app.models.domain.document import Document
from app.models.schemas.document import ContentWriteResponse, DocumentUpdateIn
from app.services.dal import content_svc

router = APIRouter()


@router.post(
    "/document",
    response_model=ContentWriteResponse,
    name="Create a Document",
    tags=[PROVISIONERS]
)
async def create_document(doc: Document) -> ContentWriteResponse:
    resp = await content_svc.create_content(doc)
    return resp


@router.get(
    "/document/{ns}/{content_id}",
    response_model=Document,
    name="Retrieve Document",
    tags=[READERS]
)
async def retrieve_document(ns: str, content_id: str) -> Document:
    resp = await content_svc.get_document(
        ns=ns,
        content_id=content_id
    )
    return resp


@router.get(
    "/document/{ns}",
    response_model=List[Document],
    name="Get Documents by Topic",
    tags=[READERS]
)
async def get_documents_by_topic(ns: str) -> List[Document]:
    resp = await content_svc.get_documents_by_topic(
        ns=ns
    )
    return resp


@router.patch(
    "/document/{ns}/{content_id}",
    response_model=ContentWriteResponse,
    name="Patch Document",
    tags=[ADMIN]
)
async def patch_document(
        ns: str,
        content_id: str,
        doc: DocumentUpdateIn) -> ContentWriteResponse:
    resp = await content_svc.update_content(
        ns=ns,
        content_id=content_id,
        content=doc
    )
    return resp


@router.put(
    "/document/{ns}/{content_id}",
    response_model=ContentWriteResponse,
    name="Update Document",
    tags=[ADMIN]
)
async def update_document(
        ns: str,
        content_id: str,
        doc: DocumentUpdateIn) -> ContentWriteResponse:
    resp = await content_svc.update_content(
        ns=ns,
        content_id=content_id,
        content=doc
    )
    return resp


@router.delete(
    "/document/{ns}/{content_id}",
    response_model=ContentWriteResponse,
    name="Delete Document",
    tags=[PROVISIONERS]
)
async def delete_document(ns: str, content_id: str) -> ContentWriteResponse:
    resp = await content_svc.delete_content(
        ns=ns,
        content_id=content_id
    )
    return resp
