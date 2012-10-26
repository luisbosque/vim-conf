syntax region mkdCode start=/\s*```[^`]*/ end=/[^`]*```\s*/
syn region markdownCode matchgroup=markdownCodeDelimiter start="``` \=" end=" \=```" keepend contains=markdownLineStart

