require "pry"
require "json"
KEYS = (KIND, ARGS, BODY, COMMENTS = "kind", "args", "body", "comments")
REQUIRED_KEYS = [ARGS, KIND]
tree = JSON.parse(File.read("./ast.json"))

def is_node?(maybe)
  (maybe.is_a?(Hash) &&
  (REQUIRED_KEYS & maybe.keys) == REQUIRED_KEYS)
end

def go(thing)
  if is_node?(thing)
    kind = thing[KIND] || "panic"
    body = thing[BODY]
    args = thing[ARGS].map { |p| "#{p[0]}: #{go(p[1])}" }.join(", ")
    head = "F.#{ kind }(#{ args })"
    tail = body ? " { #{body.map{|b| go(b)}.join("\n")} } " : ""
    return head + tail
  else
    JSON.dump(thing)
  end
end

puts go(tree)
