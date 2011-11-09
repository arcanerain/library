$(function) {
	$("#books th a, #books. pagination a").live("click", function {
		$.getScript(this.href);
		return false;
	});
});