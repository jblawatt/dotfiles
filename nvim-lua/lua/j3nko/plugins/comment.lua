-- import comment plugin safely
local setup, comment = pcall(require, "Comment")
if not setup then
    print("no comment")
    return
end

-- enable comment
comment.setup()

