import * as R from "./r.js";

// import * as Py from "./py.js"; // uncomment this for pyodide

const statusMessage = document.getElementById("status-message")

statusMessage.innerHTML = `🔵 WebR — <code>${await webR.evalRString("R.version.string")}</code> — Loaded!`

const button = document.getElementById("random-button")
button.onclick = async () => {
	const output = document.getElementById("r-output")
	const res = await webR.evalR("sample(100, 5)")
	const val = await res.toArray()
	output.innerText = JSON.stringify(val)
};
