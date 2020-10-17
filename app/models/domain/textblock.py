
from typing import List

from pydantic import EmailStr

from app.models.common import (
    DateTimeModelMixin,
    ModelConfigMixin,
    convert_json_to_realworld,
    convert_string_to_datetime
)
from app.models.domain import (
    EXAMPLE_CONTENT_ID,
    EXAMPLE_EMAIL,
    EXAMPLE_TAGS,
    EXAMPLE_NUMBER,
    EXAMPLE_AUTHOR
)
from app.models.domain.content import ContentDynaInOutInterface
from app.models.domain.content import (
    NAMESPACE,
    CONTENTID,
    USERID,
    TAGS,
    SCORE,
    VERSION,
    CREATEDAT,
    UPDATEDAT,
    POSITION,
    TYPE
)

AUTHOR = "Author"
TEXT = "Text"


class TextBlock(DateTimeModelMixin, ModelConfigMixin, ContentDynaInOutInterface):
    parentdocument_id: str = EXAMPLE_CONTENT_ID
    textblock_id: str = EXAMPLE_CONTENT_ID
    user_id: EmailStr = EXAMPLE_EMAIL
    tags: List[str] = EXAMPLE_TAGS
    score: int = EXAMPLE_NUMBER
    version: int = EXAMPLE_NUMBER
    position: int = EXAMPLE_NUMBER
    type: int = EXAMPLE_NUMBER
    text: str = EXAMPLE_NUMBER
    author: str = EXAMPLE_AUTHOR

    def to_dynamo(self) -> dict:
        dyn_dict = dict()

        dyn_dict[NAMESPACE] = self.parentdocument_id
        dyn_dict[CONTENTID] = self.textblock_id
        dyn_dict[USERID] = self.user_id
        dyn_dict[TAGS] = self.tags
        dyn_dict[SCORE] = self.score
        dyn_dict[VERSION] = self.version
        dyn_dict[POSITION] = self.position
        dyn_dict[TYPE] = self.type
        dyn_dict[TEXT] = self.text
        dyn_dict[AUTHOR] = self.author
        dyn_dict[CREATEDAT] = convert_json_to_realworld(self.created_at)
        dyn_dict[UPDATEDAT] = convert_json_to_realworld(self.updated_at)

        return dyn_dict

    @classmethod
    def from_dynamo(cls, item: dict) -> 'TextBlock':

        tb = cls(
            parentdocument_id=item[NAMESPACE],
            textblock_id=item[CONTENTID],
            user_id=item[USERID],
            tags=item[TAGS],
            score=item[SCORE],
            version=item[VERSION],
            position=item[POSITION],
            type=item[TYPE],
            text=item[TEXT],
            author=item[AUTHOR],
            created_at=convert_string_to_datetime(item[CREATEDAT]),
            updated_at=convert_string_to_datetime(item[UPDATEDAT]),
        )

        return tb
