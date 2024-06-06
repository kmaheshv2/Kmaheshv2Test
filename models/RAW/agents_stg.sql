select *
from
    {{ source("MYSTAGE","AGT") }}