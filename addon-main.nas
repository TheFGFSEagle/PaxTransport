var main = func(addon) {
	logprint(LOG_INFO, "PaxTransport addon initialized from path ", addon.basePath);
	loadNasalFiles(addon);
	createDirectories(addon);
};

var loadNasalFiles = func (addon) {
	var modules = [
		"paxtransport"
	];
	
	foreach (var scriptName; modules) {
		var fileName = addon.basePath ~ "/Nasal/" ~ scriptName ~ ".nas";
		if (!io.load_nasal(fileName, "paxtransport")) {
			logprint(LOG_ALERT, "Pax transport addon: Failed loading Nasal file \"", scriptName, "\" from \"" ~ fileName ~ "\" !");
		}
	}
};

var createDirectories = func (addon) {
	# Create $FG_HOME/Export/Addons/org.flightgear.addons.Aerotow directory
	#addon.createStorageDir();
};

var unload = func(addon) {
};

