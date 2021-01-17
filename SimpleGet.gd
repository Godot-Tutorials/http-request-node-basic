extends HTTPRequest

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.connect("request_completed", self, "printResult")
	self.request("https://swapi.dev/api/people/1")

func printResult(result, response, headers, body) -> void:
	print("result: ", result, "\n")
	print("response: ", response, "\n")
	print("headers: ", headers, "\n")
	print("body: ", body.get_string_from_utf8(), "\n")
