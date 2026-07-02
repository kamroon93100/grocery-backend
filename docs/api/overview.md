\# API Overview



Base URL:



https://kohli-store-api-4zh4.onrender.com/api



\## Core Endpoints



| Method | Endpoint | Description |

|---|---|---|

| GET | /health | API health check |

| GET | /products | List products |

| GET | /categories | List categories |

| GET | /cart | Get user cart |

| POST | /cart/items | Add item to cart |

| PUT | /cart/items/:id | Update cart item |

| DELETE | /cart/items/:id | Remove cart item |

| POST | /orders | Create order |

| GET | /notifications | List notifications |

| GET | /wishlist | Get wishlist |



\## Response Style



Most list endpoints return paginated responses:



```json

{

&#x20; "items": \[],

&#x20; "total": 0,

&#x20; "page": 1,

&#x20; "limit": 20

}

