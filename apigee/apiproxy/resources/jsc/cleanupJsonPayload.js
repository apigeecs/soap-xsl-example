// JSON has ~STR~ embedded to force fields to be treated as strings, and ~ARRAY~ as array placeholders to make sure that
// array fields are converted to JSON as arrays even if array is empty or only contains one value
// 1) replaces empty strings with null
// 2) removes remaining string specifiers
// 3) removes array placeholders, including trailing commas
// 4) removes array placeholders without trailing commas
// 5) if the return payload is meant to be an array (at the top level), return that
var jsonResponse = context.getVariable("jsonResponse").replace(/"~STR~"/, "null").replace(/~STR~/g, "").replace(/"~ARRAY~",/g, "").replace(/"~ARRAY~"/g, "");
var jsonVar = JSON.parse(jsonResponse);
var jsonOut = jsonVar.ROOT;
if (jsonOut.TOPARRAY !== undefined) {
	jsonOut = jsonOut.TOPARRAY;
}

context.setVariable("response.content", JSON.stringify(jsonOut));
context.setVariable("response.header.Content-Type", "application/json");
