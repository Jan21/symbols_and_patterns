((* extends 'article.tplx' *))


((* block title -*))
\title{Symbols and Patterns}
((*- endblock title *))

((* block maketitle *))

((*- if nb.metadata.get("latex_metadata", {}).get("title", ""): -*))
\title{((( nb.metadata["latex_metadata"]["title"] )))}
((*- else -*))
\title{((( resources.metadata.name | ascii_only | escape_latex )))}
((*- endif *))

((*- if nb.metadata.get("latex_metadata", {}).get("author", ""): -*))
\author{((( nb.metadata["latex_metadata"]["author"] )))}
((*- else -*))
\author{Jan Hula}
((*- endif *))

((*- if nb.metadata.get("latex_metadata", {}).get("affiliation", ""): -*))
\affiliation{((( nb.metadata["latex_metadata"]["affiliation"] )))}
((*- endif *))

\maketitle

((* endblock maketitle *))



