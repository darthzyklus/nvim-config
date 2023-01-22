return {
	settings = {
		["rust-analyzer"] = {
			checkOnSave = {
				command = "clippy"
			},
			onSave = {
				command = "fmt"
			}
		}
	}
}
