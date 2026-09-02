#include <cstddef>   // std::size_t
#include <cassert>   // assert

std::shared_ptr<cJSON> cJSON_CreateObject()
{
    auto item = cJSON_New_Item();
    if (item) item->type = (1 << 6);
    return item;
}
