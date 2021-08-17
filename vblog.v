module main

import vweb

struct App {
	vweb.Context
}

fn main() {
	app := App{}
	vweb.run(app, 8081)
}

['/']
pub fn (mut app App) home() vweb.Result {
	return app.text('Hello world from vweb!')
}

["/render"]
pub fn (mut app App) render() vweb.Result {
	message := 'Hello, world from Vweb!'
	return $vweb.html()
}