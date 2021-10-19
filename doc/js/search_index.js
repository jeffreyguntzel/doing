var search_data = {"index":{"searchIndex":["doing","wwid","add_item()","add_section()","archive()","autotag()","choose_from()","choose_section()","choose_view()","chronify()","chronify_qty()","colors()","configure()","create()","dedup()","delete_item()","do_archive()","edit_last()","exec_available()","find_local_config()","fmt_time()","fork_editor()","format_input()","get_end_date()","get_interval()","get_view()","guess_section()","guess_view()","import()","init_doing_file()","interactive()","last()","last_entry()","last_note()","list_date()","list_section()","load_plugins()","move_item()","new()","next_item()","note_last()","overlapping_time?()","plugin_names()","plugin_regex()","plugin_templates()","plugins()","read_config()","recent()","record_tag_times()","restart_last()","restore_backup()","rotate()","same_time?()","sections()","stop_start()","tag_item()","tag_last()","tag_times()","template_for_trigger()","template_regex()","today()","untag_item()","update_item()","views()","write()","yesterday()","yn()"],"longSearchIndex":["doing","doing::wwid","doing::wwid#add_item()","doing::wwid#add_section()","doing::wwid#archive()","doing::wwid#autotag()","doing::wwid#choose_from()","doing::wwid#choose_section()","doing::wwid#choose_view()","doing::wwid#chronify()","doing::wwid#chronify_qty()","doing::wwid#colors()","doing::wwid#configure()","doing::wwid#create()","doing::wwid#dedup()","doing::wwid#delete_item()","doing::wwid#do_archive()","doing::wwid#edit_last()","doing::wwid#exec_available()","doing::wwid#find_local_config()","doing::wwid#fmt_time()","doing::wwid#fork_editor()","doing::wwid#format_input()","doing::wwid#get_end_date()","doing::wwid#get_interval()","doing::wwid#get_view()","doing::wwid#guess_section()","doing::wwid#guess_view()","doing::wwid#import()","doing::wwid#init_doing_file()","doing::wwid#interactive()","doing::wwid#last()","doing::wwid#last_entry()","doing::wwid#last_note()","doing::wwid#list_date()","doing::wwid#list_section()","doing::wwid#load_plugins()","doing::wwid#move_item()","doing::wwid::new()","doing::wwid#next_item()","doing::wwid#note_last()","doing::wwid#overlapping_time?()","doing::wwid#plugin_names()","doing::wwid#plugin_regex()","doing::wwid#plugin_templates()","doing::wwid#plugins()","doing::wwid#read_config()","doing::wwid#recent()","doing::wwid#record_tag_times()","doing::wwid#restart_last()","doing::wwid#restore_backup()","doing::wwid#rotate()","doing::wwid#same_time?()","doing::wwid#sections()","doing::wwid#stop_start()","doing::wwid#tag_item()","doing::wwid#tag_last()","doing::wwid#tag_times()","doing::wwid#template_for_trigger()","doing::wwid#template_regex()","doing::wwid#today()","doing::wwid#untag_item()","doing::wwid#update_item()","doing::wwid#views()","doing::wwid#write()","doing::wwid#yesterday()","doing::wwid#yn()"],"info":[["Doing","","Doing.html","",""],["Doing::WWID","","Doing/WWID.html","","<p>@brief Main “What Was I Doing” methods\n"],["add_item","Doing::WWID","Doing/WWID.html#method-i-add_item","(title, section = nil, opt = {})","<p>@brief Adds an entry\n<p>@param title (String) The entry title\n@param section (String) The section to add ...\n"],["add_section","Doing::WWID","Doing/WWID.html#method-i-add_section","(title)","<p>@brief Adds a section.\n<p>@param title (String) The new section title\n"],["archive","Doing::WWID","Doing/WWID.html#method-i-archive","(section = @current_section, options = {})","<p>@brief Move entries from a section to Archive or other specified\n section\n<p>@param section (String) The …\n"],["autotag","Doing::WWID","Doing/WWID.html#method-i-autotag","(text)","<p>@brief Uses &#39;autotag&#39; configuration to turn keywords into tags for time tracking.\nDoes not repeat ...\n"],["choose_from","Doing::WWID","Doing/WWID.html#method-i-choose_from","(options, prompt: 'Make a selection: ', multiple: false, fzf_args: [])","<p>@brief Generate a menu of options and allow user selection\n<p>@return (String) The selected option\n"],["choose_section","Doing::WWID","Doing/WWID.html#method-i-choose_section","()","<p>@brief Generate a menu of sections and allow user selection\n<p>@return (String) The selected section name …\n"],["choose_view","Doing::WWID","Doing/WWID.html#method-i-choose_view","()","<p>@brief Generate a menu of views and allow user selection\n<p>@return (String) The selected view name\n"],["chronify","Doing::WWID","Doing/WWID.html#method-i-chronify","(input)","<p>@brief Converts input string into a Time object when input takes on the\n following formats:\n - interval ...\n"],["chronify_qty","Doing::WWID","Doing/WWID.html#method-i-chronify_qty","(qty)","<p>@brief Converts simple strings into seconds that can be added to a Time\n object\n<p>@param qty (String) HH:MM …\n"],["colors","Doing::WWID","Doing/WWID.html#method-i-colors","()","<p>@brief A dictionary of colors\n<p>@return (String) ANSI escape sequence\n"],["configure","Doing::WWID","Doing/WWID.html#method-i-configure","(opt = {})","<p>@brief Read user configuration and merge with defaults\n<p>@param opt (Hash) Additional Options\n"],["create","Doing::WWID","Doing/WWID.html#method-i-create","(filename = nil)","<p>@brief Create a new doing file\n"],["dedup","Doing::WWID","Doing/WWID.html#method-i-dedup","(items, no_overlap = false)",""],["delete_item","Doing::WWID","Doing/WWID.html#method-i-delete_item","(old_item)","<p>@brief Delete an item from the index\n<p>@param old_item\n"],["do_archive","Doing::WWID","Doing/WWID.html#method-i-do_archive","(sect, destination, opt = {})","<p>@brief Helper function, performs the actual archiving\n<p>@param section (String) The source section\n@param ...\n"],["edit_last","Doing::WWID","Doing/WWID.html#method-i-edit_last","(section: 'All', options: {})","<p>@brief Edit the last entry\n<p>@param section (String) The section, default “All”\n"],["exec_available","Doing::WWID","Doing/WWID.html#method-i-exec_available","(cli)","<p>@brief Test if command line tool is available\n<p>@param cli The cli\n"],["find_local_config","Doing::WWID","Doing/WWID.html#method-i-find_local_config","()","<p>@brief Finds a project-specific configuration file\n<p>@return (String) A file path\n"],["fmt_time","Doing::WWID","Doing/WWID.html#method-i-fmt_time","(seconds)","<p>@brief Format human readable time from seconds\n<p>@param seconds The seconds\n"],["fork_editor","Doing::WWID","Doing/WWID.html#method-i-fork_editor","(input = '')","<p>@brief Create a process for an editor and wait for the file handle to return\n<p>@param input (String) Text …\n"],["format_input","Doing::WWID","Doing/WWID.html#method-i-format_input","(input)","<p>@brief Takes a multi-line string and formats it as an entry\n<p>@return (Array) [(String)title, (Array)note] …\n"],["get_end_date","Doing::WWID","Doing/WWID.html#method-i-get_end_date","(item)","<p>@brief Gets the entry finish date from the @done\n tag\n<p>@param item (Hash) The entry\n<p>@return (Date) finish …\n"],["get_interval","Doing::WWID","Doing/WWID.html#method-i-get_interval","(item, formatted: true, record: true)","<p>@brief Gets the interval between entry&#39;s start\n date and @done date\n<p>@param item (Hash) The entry\n@param ...\n"],["get_view","Doing::WWID","Doing/WWID.html#method-i-get_view","(title)","<p>@brief Gets a view from configuration\n<p>@param title (String) The title of the view to retrieve\n"],["guess_section","Doing::WWID","Doing/WWID.html#method-i-guess_section","(frag, guessed: false)","<p>@brief Attempt to match a string with an existing section\n<p>@param frag (String) The user-provided string …\n"],["guess_view","Doing::WWID","Doing/WWID.html#method-i-guess_view","(frag, guessed = false)","<p>@brief Attempt to match a string with an existing view\n<p>@param frag (String) The user-provided string\n@param ...\n"],["import","Doing::WWID","Doing/WWID.html#method-i-import","(paths, opt = {})","<p>@brief Imports external entries\n<p>@param path (String) Path to JSON report file\n@param opt (Hash) Additional ...\n"],["init_doing_file","Doing::WWID","Doing/WWID.html#method-i-init_doing_file","(path = nil)","<p>@brief Initializes the doing file.\n<p>@param path (String) Override path to a doing file, optional\n"],["interactive","Doing::WWID","Doing/WWID.html#method-i-interactive","(opt = {})","<p>@brief Display an interactive menu of entries\n<p>@param opt (Hash) Additional options\n"],["last","Doing::WWID","Doing/WWID.html#method-i-last","(times: true, section: nil, options: {})","<p>@brief Show the last entry\n<p>@param times (Bool) Show times\n@param section (String) Section to pull from, ...\n"],["last_entry","Doing::WWID","Doing/WWID.html#method-i-last_entry","(opt = {})","<p>@brief Get the last entry\n<p>@param opt (Hash) Additional Options\n"],["last_note","Doing::WWID","Doing/WWID.html#method-i-last_note","(section = 'All')","<p>@brief Return the content of the last note for a given section\n<p>@param section (String) The section to …\n"],["list_date","Doing::WWID","Doing/WWID.html#method-i-list_date","(dates, section, times = nil, output = nil, opt = {})","<p>@brief Display entries within a date range\n<p>@param dates (Array) [start, end]\n@param section (String)  ...\n"],["list_section","Doing::WWID","Doing/WWID.html#method-i-list_section","(opt = {})","<p>@brief Overachieving function for displaying contents of a section.\n This is a fucking mess. I mean, ...\n"],["load_plugins","Doing::WWID","Doing/WWID.html#method-i-load_plugins","()",""],["move_item","Doing::WWID","Doing/WWID.html#method-i-move_item","(item, section)","<p>@brief Move item from current section to\n destination section\n<p>@param item The item\n@param section The ...\n"],["new","Doing::WWID","Doing/WWID.html#method-c-new","()","<p>@brief Initializes the object.\n"],["next_item","Doing::WWID","Doing/WWID.html#method-i-next_item","(old_item)","<p>@brief Get next item in the index\n<p>@param old_item\n"],["note_last","Doing::WWID","Doing/WWID.html#method-i-note_last","(section, note, replace: false)","<p>@brief Add a note to the last entry in a section\n<p>@param section (String) The section, default “All” …\n"],["overlapping_time?","Doing::WWID","Doing/WWID.html#method-i-overlapping_time-3F","(item_a, item_b)",""],["plugin_names","Doing::WWID","Doing/WWID.html#method-i-plugin_names","(type: :export)",""],["plugin_regex","Doing::WWID","Doing/WWID.html#method-i-plugin_regex","(type: :export)",""],["plugin_templates","Doing::WWID","Doing/WWID.html#method-i-plugin_templates","(type: :export)",""],["plugins","Doing::WWID","Doing/WWID.html#method-i-plugins","()",""],["read_config","Doing::WWID","Doing/WWID.html#method-i-read_config","(opt = {})","<p>@brief Reads a configuration.\n"],["recent","Doing::WWID","Doing/WWID.html#method-i-recent","(count = 10, section = nil, opt = {})","<p>@brief Show recent entries\n<p>@param count (Integer) The number to show\n@param section (String) The section ...\n"],["record_tag_times","Doing::WWID","Doing/WWID.html#method-i-record_tag_times","(item, seconds)","<p>@brief Record times for item tags\n<p>@param item The item\n"],["restart_last","Doing::WWID","Doing/WWID.html#method-i-restart_last","(opt = {})","<p>@brief Restart the last entry\n<p>@param opt (Hash) Additional Options\n"],["restore_backup","Doing::WWID","Doing/WWID.html#method-i-restore_backup","(file)","<p>@brief Restore a backed up version of a file\n<p>@param file (String) The filepath to restore\n"],["rotate","Doing::WWID","Doing/WWID.html#method-i-rotate","(opt = {})","<p>@brief Rename doing file with date and start fresh one\n"],["same_time?","Doing::WWID","Doing/WWID.html#method-i-same_time-3F","(item_a, item_b)",""],["sections","Doing::WWID","Doing/WWID.html#method-i-sections","()","<p>@brief List sections\n<p>@return (Array) section titles\n"],["stop_start","Doing::WWID","Doing/WWID.html#method-i-stop_start","(target_tag, opt = {})","<p>@brief Accepts one tag and the raw text of a new item if the passed tag\n is on any item, it&#39;s replaced ...\n"],["tag_item","Doing::WWID","Doing/WWID.html#method-i-tag_item","(old_item, tags, remove: false, date: false)","<p>@brief Tag an item from the index\n<p>@param old_item (Item) The item to tag\n@param tag (string) The tag to ...\n"],["tag_last","Doing::WWID","Doing/WWID.html#method-i-tag_last","(opt = {})","<p>@brief Tag the last entry or X entries\n<p>@param opt (Hash) Additional Options\n"],["tag_times","Doing::WWID","Doing/WWID.html#method-i-tag_times","(format: :text, sort_by_name: false, sort_order: 'asc')","<p>@brief Get total elapsed time for all tags in\n selection\n<p>@param format (String) return format (html,\n ...\n"],["template_for_trigger","Doing::WWID","Doing/WWID.html#method-i-template_for_trigger","(trigger, type: :export)",""],["template_regex","Doing::WWID","Doing/WWID.html#method-i-template_regex","(type: :export)",""],["today","Doing::WWID","Doing/WWID.html#method-i-today","(times = true, output = nil, opt = {})","<p>@brief Show all entries from the current day\n<p>@param times (Boolean) show times\n@param output (String) ...\n"],["untag_item","Doing::WWID","Doing/WWID.html#method-i-untag_item","(old_item, tags)","<p>@brief Remove a tag on an item from the index\n<p>@param old_item (Item) The item to tag\n@param tag (string) ...\n"],["update_item","Doing::WWID","Doing/WWID.html#method-i-update_item","(old_item, new_item)","<p>@brief Update an item in the index with a modified item\n<p>@param old_item The old item\n@param new_item  ...\n"],["views","Doing::WWID","Doing/WWID.html#method-i-views","()","<p>@brief List available views\n<p>@return (Array) View names\n"],["write","Doing::WWID","Doing/WWID.html#method-i-write","(file = nil, backup: true)","<p>@brief Write content to file or STDOUT\n<p>@param file (String) The filepath to write to\n"],["yesterday","Doing::WWID","Doing/WWID.html#method-i-yesterday","(section, times = nil, output = nil, opt = {})","<p>@brief Show entries from the previous day\n<p>@param section (String) The section\n@param times (Bool) Show ...\n"],["yn","Doing::WWID","Doing/WWID.html#method-i-yn","(question, default_response: false)","<p>@brief Ask a yes or no question in the terminal\n<p>@param question (String) The question to ask\n@param default ...\n"]]}}