compdef _doing doing

function _doing() {
    local line state

    function _commands {
        local -a commands

        commands=(
                  'add_section:Add a new section to the "doing" file'
                  'again:Repeat last entry as new entry'
                  'resume:Repeat last entry as new entry'
                  'archive:Move entries between sections'
                  'move:Move entries between sections'
                  'autotag:Autotag last entry or filtered entries'
                  'cancel:End last X entries with no time tracked'
                  'choose:Select a section to display from a menu'
                  'colors:List available color variables for configuration templates and views'
                  'completion:Generate shell completion scripts'
                  'config:Edit the configuration file or output a value from it'
                  'done:Add a completed item with @done(date)'
                  'did:Add a completed item with @done(date)'
                  'finish:Mark last X entries as @done'
                  'grep:Search for entries'
                  'search:Search for entries'
                  'help:Shows a list of commands or help for one command'
                  'import:Import entries from an external source'
                  'last:Show the last entry'
                  'later:Add an item to the Later section'
                  'mark:Mark last entry as flagged'
                  'flag:Mark last entry as flagged'
                  'meanwhile:Finish any running @meanwhile tasks and optionally create a new one'
                  'note:Add a note to the last entry'
                  'now:Add an entry'
                  'next:Add an entry'
                  'on:List entries for a date'
                  'open:Open the "doing" file in an editor'
                  'plugins:List installed plugins'
                  'recent:List recent entries'
                  'reset:Reset the start time of an entry'
                  'begin:Reset the start time of an entry'
                  'rotate:Move entries to archive file'
                  'sections:List sections'
                  'select:Display an interactive menu to perform operations'
                  'show:List all entries'
                  'since:List entries since a date'
                  'tag:Add tag(s) to last entry'
                  'template:Output HTML'
                  'test:Test Stuff'
                  'today:List entries from today'
                  'undo:Undo the last change to the doing_file'
                  'view:Display a user-created view'
                  'views:List available custom views'
                  'wiki:Output a tag wiki'
                  'yesterday:List entries from yesterday'
        )
        _describe 'command' commands
    }

    _arguments -C             "1: :_commands"             "*::arg:->args"



    case $line[1] in
        add_section) 
                args=(  )
            ;;
            again) 
                args=( "(--bool=)--bool=}[Boolean used to combine multiple tags]" "(--case=)--case=}[Case sensitivity for search string matching [(c)ase-sensitive]" {-e,--editor}"[Edit duplicated entry with vim before adding]" {-i,--interactive}"[Select item to resume from a menu of matching entries]" "(--in=)--in=}[Add new entry to section]" {-n,--note=}"[Note]" "(--not)--not}[Resume items that *dont* match search/tag filterst* match search/tag filters]" {-s,--section=}"[Get last entry from a specific section]" "(--search=)--search=}[Repeat last entry matching search]" "(--tag=)--tag=}[Repeat last entry matching tags]" {-x,--exact}"[Force exact search string matching]" )
            ;;
            resume) 
                args=( "(--bool=)--bool=}[Boolean used to combine multiple tags]" "(--case=)--case=}[Case sensitivity for search string matching [(c)ase-sensitive]" {-e,--editor}"[Edit duplicated entry with vim before adding]" {-i,--interactive}"[Select item to resume from a menu of matching entries]" "(--in=)--in=}[Add new entry to section]" {-n,--note=}"[Note]" "(--not)--not}[Resume items that *dont* match search/tag filterst* match search/tag filters]" {-s,--section=}"[Get last entry from a specific section]" "(--search=)--search=}[Repeat last entry matching search]" "(--tag=)--tag=}[Repeat last entry matching tags]" {-x,--exact}"[Force exact search string matching]" )
            ;;
            archive) 
                args=( "(--before=)--before=}[Archive entries older than date]" "(--bool=)--bool=}[Tag boolean]" "(--case=)--case=}[Case sensitivity for search string matching [(c)ase-sensitive]" {-k,--keep=}"[How many items to keep]" "(--label)--label}[Label moved items with @from(SECTION_NAME)]" "(--not)--not}[Show items that *dont* match search stringt* match search string]" "(--search=)--search=}[Search filter]" {-t,--to=}"[Move entries to]" "(--tag=)--tag=}[Tag filter]" {-x,--exact}"[Force exact search string matching]" )
            ;;
            move) 
                args=( "(--before=)--before=}[Archive entries older than date]" "(--bool=)--bool=}[Tag boolean]" "(--case=)--case=}[Case sensitivity for search string matching [(c)ase-sensitive]" {-k,--keep=}"[How many items to keep]" "(--label)--label}[Label moved items with @from(SECTION_NAME)]" "(--not)--not}[Show items that *dont* match search stringt* match search string]" "(--search=)--search=}[Search filter]" {-t,--to=}"[Move entries to]" "(--tag=)--tag=}[Tag filter]" {-x,--exact}"[Force exact search string matching]" )
            ;;
            autotag) 
                args=( "(--bool=)--bool=}[Boolean]" {-c,--count=}"[How many recent entries to autotag]" "(--force)--force}[Dont ask permission to autotag all entries when count is 0t ask permission to autotag all entries when count is 0]" {-i,--interactive}"[Select item(s) to tag from a menu of matching entries]" {-s,--section=}"[Section]" "(--search=)--search=}[Autotag entries matching search filter]" "(--tag=)--tag=}[Autotag the last X entries containing TAG]" {-u,--unfinished}"[Autotag last entry]" )
            ;;
            cancel) 
                args=( {-a,--archive}"[Archive entries]" "(--bool=)--bool=}[Boolean]" "(--case=)--case=}[Case sensitivity for search string matching [(c)ase-sensitive]" {-i,--interactive}"[Select item(s) to cancel from a menu of matching entries]" "(--not)--not}[Finish items that *dont* match search/tag filterst* match search/tag filters]" {-s,--section=}"[Section]" "(--search=)--search=}[Cancel the last X entries matching search filter]" "(--tag=)--tag=}[Cancel the last X entries containing TAG]" {-u,--unfinished}"[Cancel last entry]" {-x,--exact}"[Force exact search string matching]" )
            ;;
            choose) 
                args=(  )
            ;;
            colors) 
                args=(  )
            ;;
            completion) 
                args=( {-f,--file=}"[File to write output to]" {-t,--type=}"[Shell to generate for]" )
            ;;
            config) 
                args=( {-d,--dump}"[Show a config key value based on arguments]" {-e,--editor=}"[Editor to use]" {-o,--output=}"[Format for --dump]" {-u,--update}"[Update config file with missing configuration options]" )
            ;;
            done) 
                args=( {-a,--archive}"[Immediately archive the entry]" "(--at=)--at=}[Set finish date to specific date/time]" {-b,--back=}"[Backdate start date by interval [4pm|20m|2h|yesterday noon]]" "(--date)--date}[Include date]" {-e,--editor}"[Edit entry with vim]" {-n,--note=}"[Include a note]" {-r,--remove}"[Remove @done tag]" {-s,--section=}"[Section]" {-t,--took=}"[Set completion date to start date plus interval]" {-u,--unfinished}"[Finish last entry not already marked @done]" )
            ;;
            did) 
                args=( {-a,--archive}"[Immediately archive the entry]" "(--at=)--at=}[Set finish date to specific date/time]" {-b,--back=}"[Backdate start date by interval [4pm|20m|2h|yesterday noon]]" "(--date)--date}[Include date]" {-e,--editor}"[Edit entry with vim]" {-n,--note=}"[Include a note]" {-r,--remove}"[Remove @done tag]" {-s,--section=}"[Section]" {-t,--took=}"[Set completion date to start date plus interval]" {-u,--unfinished}"[Finish last entry not already marked @done]" )
            ;;
            finish) 
                args=( {-a,--archive}"[Archive entries]" "(--at=)--at=}[Set finish date to specific date/time]" "(--auto)--auto}[Auto-generate finish dates from next entrys start times start time]" {-b,--back=}"[Backdate completed date to date string [4pm|20m|2h|yesterday noon]]" "(--bool=)--bool=}[Boolean]" "(--case=)--case=}[Case sensitivity for search string matching [(c)ase-sensitive]" "(--date)--date}[Include date]" {-i,--interactive}"[Select item(s) to finish from a menu of matching entries]" "(--not)--not}[Finish items that *dont* match search/tag filterst* match search/tag filters]" {-r,--remove}"[Remove done tag]" {-s,--section=}"[Section]" "(--search=)--search=}[Finish the last X entries matching search filter]" {-t,--took=}"[Set the completed date to the start date plus XX[hmd]]" "(--tag=)--tag=}[Finish the last X entries containing TAG]" {-u,--unfinished}"[Finish last entry]" {-x,--exact}"[Force exact search string matching]" )
            ;;
            grep) 
                args=( "(--after=)--after=}[Constrain search to entries newer than date]" "(--before=)--before=}[Constrain search to entries older than date]" "(--case=)--case=}[Case sensitivity for search string matching [(c)ase-sensitive]" {-i,--interactive}"[Display an interactive menu of results to perform further operations]" "(--not)--not}[Show items that *dont* match search stringt* match search string]" {-o,--output=}"[Output to export format]" "(--only_timed)--only_timed}[Only show items with recorded time intervals]" {-s,--section=}"[Section]" {-t,--times}"[Show time intervals on @done tasks]" "(--tag_sort=)--tag_sort=}[Sort tags by]" "(--totals)--totals}[Show intervals with totals at the end of output]" {-x,--exact}"[Force exact string matching]" )
            ;;
            search) 
                args=( "(--after=)--after=}[Constrain search to entries newer than date]" "(--before=)--before=}[Constrain search to entries older than date]" "(--case=)--case=}[Case sensitivity for search string matching [(c)ase-sensitive]" {-i,--interactive}"[Display an interactive menu of results to perform further operations]" "(--not)--not}[Show items that *dont* match search stringt* match search string]" {-o,--output=}"[Output to export format]" "(--only_timed)--only_timed}[Only show items with recorded time intervals]" {-s,--section=}"[Section]" {-t,--times}"[Show time intervals on @done tasks]" "(--tag_sort=)--tag_sort=}[Sort tags by]" "(--totals)--totals}[Show intervals with totals at the end of output]" {-x,--exact}"[Force exact string matching]" )
            ;;
            help) 
                args=(  )
            ;;
            import) 
                args=( "(--after=)--after=}[Import entries newer than date]" "(--autotag)--autotag}[Autotag entries]" "(--before=)--before=}[Import entries older than date]" "(--case=)--case=}[Case sensitivity for search string matching [(c)ase-sensitive]" {-f,--from=}"[Date range to import]" "(--not)--not}[Import items that *dont* match search/tag/date filterst* match search/tag/date filters]" "(--only_timed)--only_timed}[Only import items with recorded time intervals]" "(--overlap)--overlap}[Allow entries that overlap existing times]" "(--prefix=)--prefix=}[Prefix entries with]" {-s,--section=}"[Target section]" "(--search=)--search=}[Only import items matching search]" "(--tag=)--tag=}[Tag all imported entries]" "(--type=)--type=}[Import type]" {-x,--exact}"[Force exact search string matching]" )
            ;;
            last) 
                args=( "(--bool=)--bool=}[Tag boolean]" "(--case=)--case=}[Case sensitivity for search string matching [(c)ase-sensitive]" {-e,--editor}"[Edit entry with vim]" "(--not)--not}[Show items that *dont* match search string or tag filtert* match search string or tag filter]" {-s,--section=}"[Specify a section]" "(--search=)--search=}[Search filter]" "(--tag=)--tag=}[Tag filter]" {-x,--exact}"[Force exact search string matching]" )
            ;;
            later) 
                args=( {-b,--back=}"[Backdate start time to date string [4pm|20m|2h|yesterday noon]]" {-e,--editor}"[Edit entry with vim]" {-n,--note=}"[Note]" )
            ;;
            mark) 
                args=( "(--bool=)--bool=}[Boolean]" {-c,--count=}"[How many recent entries to tag]" "(--case=)--case=}[Case sensitivity for search string matching [(c)ase-sensitive]" {-d,--date}"[Include current date/time with tag]" "(--force)--force}[Dont ask permission to flag all entries when count is 0t ask permission to flag all entries when count is 0]" {-i,--interactive}"[Select item(s) to flag from a menu of matching entries]" "(--not)--not}[Flag items that *dont* match search/tag/date filterst* match search/tag/date filters]" {-r,--remove}"[Remove flag]" {-s,--section=}"[Section]" "(--search=)--search=}[Flag the last entry matching search filter]" "(--tag=)--tag=}[Flag the last entry containing TAG]" {-u,--unfinished}"[Flag last entry]" {-x,--exact}"[Force exact search string matching]" )
            ;;
            flag) 
                args=( "(--bool=)--bool=}[Boolean]" {-c,--count=}"[How many recent entries to tag]" "(--case=)--case=}[Case sensitivity for search string matching [(c)ase-sensitive]" {-d,--date}"[Include current date/time with tag]" "(--force)--force}[Dont ask permission to flag all entries when count is 0t ask permission to flag all entries when count is 0]" {-i,--interactive}"[Select item(s) to flag from a menu of matching entries]" "(--not)--not}[Flag items that *dont* match search/tag/date filterst* match search/tag/date filters]" {-r,--remove}"[Remove flag]" {-s,--section=}"[Section]" "(--search=)--search=}[Flag the last entry matching search filter]" "(--tag=)--tag=}[Flag the last entry containing TAG]" {-u,--unfinished}"[Flag last entry]" {-x,--exact}"[Force exact search string matching]" )
            ;;
            meanwhile) 
                args=( {-a,--archive}"[Archive previous @meanwhile entry]" {-b,--back=}"[Backdate start date for new entry to date string [4pm|20m|2h|yesterday noon]]" {-e,--editor}"[Edit entry with vim]" {-n,--note=}"[Note]" {-s,--section=}"[Section]" )
            ;;
            note) 
                args=( "(--bool=)--bool=}[Boolean]" "(--case=)--case=}[Case sensitivity for search string matching [(c)ase-sensitive]" {-e,--editor}"[Edit entry with vim]" {-i,--interactive}"[Select item for new note from a menu of matching entries]" "(--not)--not}[Add note to item that *doesnt* match search/tag filterst* match search/tag filters]" {-r,--remove}"[Replace/Remove last entrys notes note]" {-s,--section=}"[Section]" "(--search=)--search=}[Add/remove note from last entry matching search filter]" "(--tag=)--tag=}[Add/remove note from last entry matching tag]" {-x,--exact}"[Force exact search string matching]" )
            ;;
            now) 
                args=( {-b,--back=}"[Backdate start time [4pm|20m|2h|yesterday noon]]" {-e,--editor}"[Edit entry with vim]" {-f,--finish_last}"[Timed entry]" {-n,--note=}"[Include a note]" {-s,--section=}"[Section]" )
            ;;
            next) 
                args=( {-b,--back=}"[Backdate start time [4pm|20m|2h|yesterday noon]]" {-e,--editor}"[Edit entry with vim]" {-f,--finish_last}"[Timed entry]" {-n,--note=}"[Include a note]" {-s,--section=}"[Section]" )
            ;;
            on) 
                args=( {-o,--output=}"[Output to export format]" {-s,--section=}"[Section]" {-t,--times}"[Show time intervals on @done tasks]" "(--tag_sort=)--tag_sort=}[Sort tags by]" "(--totals)--totals}[Show time totals at the end of output]" )
            ;;
            open) 
                args=( {-a,--app=}"[Open with app name]" {-b,--bundle_id=}"[Open with app bundle id]" )
            ;;
            plugins) 
                args=( {-c,--column}"[List in single column for completion]" {-t,--type=}"[List plugins of type]" )
            ;;
            recent) 
                args=( {-i,--interactive}"[Select from a menu of matching entries to perform additional operations]" {-s,--section=}"[Section]" {-t,--times}"[Show time intervals on @done tasks]" "(--tag_sort=)--tag_sort=}[Sort tags by]" "(--totals)--totals}[Show intervals with totals at the end of output]" )
            ;;
            reset) 
                args=( "(--bool=)--bool=}[Boolean]" "(--case=)--case=}[Case sensitivity for search string matching [(c)ase-sensitive]" {-i,--interactive}"[Select from a menu of matching entries]" "(--not)--not}[Reset items that *dont* match search/tag filterst* match search/tag filters]" {-r,--resume}"[Resume entry]" {-s,--section=}"[Limit search to section]" "(--search=)--search=}[Reset last entry matching search filter]" "(--tag=)--tag=}[Reset last entry matching tag]" {-x,--exact}"[Force exact search string matching]" )
            ;;
            begin) 
                args=( "(--bool=)--bool=}[Boolean]" "(--case=)--case=}[Case sensitivity for search string matching [(c)ase-sensitive]" {-i,--interactive}"[Select from a menu of matching entries]" "(--not)--not}[Reset items that *dont* match search/tag filterst* match search/tag filters]" {-r,--resume}"[Resume entry]" {-s,--section=}"[Limit search to section]" "(--search=)--search=}[Reset last entry matching search filter]" "(--tag=)--tag=}[Reset last entry matching tag]" {-x,--exact}"[Force exact search string matching]" )
            ;;
            rotate) 
                args=( "(--before=)--before=}[Rotate entries older than date]" "(--bool=)--bool=}[Tag boolean]" "(--case=)--case=}[Case sensitivity for search string matching [(c)ase-sensitive]" {-k,--keep=}"[How many items to keep in each section]" "(--not)--not}[Rotate items that *dont* match search string or tag filtert* match search string or tag filter]" {-s,--section=}"[Section to rotate]" "(--search=)--search=}[Search filter]" "(--tag=)--tag=}[Tag filter]" {-x,--exact}"[Force exact search string matching]" )
            ;;
            sections) 
                args=( {-c,--column}"[List in single column]" )
            ;;
            select) 
                args=( {-a,--archive}"[Archive selected items]" "(--resume)--resume}[Copy selection as a new entry with current time and no @done tag]" {-c,--cancel}"[Cancel selected items]" "(--case=)--case=}[Case sensitivity for search string matching [(c)ase-sensitive]" {-d,--delete}"[Delete selected items]" {-e,--editor}"[Edit selected item(s)]" {-f,--finish}"[Add @done with current time to selected item(s)]" "(--flag)--flag}[Add flag to selected item(s)]" "(--force)--force}[Perform action without confirmation]" {-m,--move=}"[Move selected items to section]" "(--menu)--menu}[Use --no-menu to skip the interactive menu]" "(--not)--not}[Select items that *dont* match search/tag filterst* match search/tag filters]" {-o,--output=}"[Output entries to format]" "(--search=)--search=}[Initial search query for filtering]" {-r,--remove}"[Reverse -c]" {-s,--section=}"[Select from a specific section]" "(--save_to=)--save_to=}[Save selected entries to file using --output format]" {-t,--tag=}"[Tag selected entries]" {-x,--exact}"[Force exact search string matching]" )
            ;;
            show) 
                args=( {-a,--age=}"[Age]" "(--after=)--after=}[View entries newer than date]" {-b,--bool=}"[Tag boolean]" "(--before=)--before=}[View entries older than date]" {-c,--count=}"[Max count to show]" "(--case=)--case=}[Case sensitivity for search string matching [(c)ase-sensitive]" {-f,--from=}"[Date range to show]" {-i,--interactive}"[Select from a menu of matching entries to perform additional operations]" "(--not)--not}[Show items that *dont* match search/tag/date filterst* match search/tag/date filters]" {-o,--output=}"[Output to export format]" "(--only_timed)--only_timed}[Only show items with recorded time intervals]" {-s,--sort=}"[Sort order]" "(--search=)--search=}[Search filter]" {-t,--times}"[Show time intervals on @done tasks]" "(--tag=)--tag=}[Tag filter]" "(--tag_order=)--tag_order=}[Tag sort direction]" "(--tag_sort=)--tag_sort=}[Sort tags by]" "(--totals)--totals}[Show intervals with totals at the end of output]" {-x,--exact}"[Force exact search string matching]" )
            ;;
            since) 
                args=( {-o,--output=}"[Output to export format]" {-s,--section=}"[Section]" {-t,--times}"[Show time intervals on @done tasks]" "(--tag_sort=)--tag_sort=}[Sort tags by]" "(--totals)--totals}[Show time totals at the end of output]" )
            ;;
            tag) 
                args=( {-a,--autotag}"[Autotag entries based on autotag configuration in ~/]" "(--bool=)--bool=}[Boolean]" {-c,--count=}"[How many recent entries to tag]" "(--case=)--case=}[Case sensitivity for search string matching [(c)ase-sensitive]" {-d,--date}"[Include current date/time with tag]" "(--force)--force}[Dont ask permission to tag all entries when count is 0t ask permission to tag all entries when count is 0]" {-i,--interactive}"[Select item(s) to tag from a menu of matching entries]" "(--not)--not}[Tag items that *dont* match search/tag filterst* match search/tag filters]" {-r,--remove}"[Remove given tag(s)]" "(--regex)--regex}[Interpret tag string as regular expression]" "(--rename=)--rename=}[Replace existing tag with tag argument]" {-s,--section=}"[Section]" "(--search=)--search=}[Tag entries matching search filter]" "(--tag=)--tag=}[Tag the last X entries containing TAG]" {-u,--unfinished}"[Tag last entry]" {-x,--exact}"[Force exact search string matching]" )
            ;;
            template) 
                args=( {-l,--list}"[List all available templates]" )
            ;;
            test) 
                args=(  )
            ;;
            today) 
                args=( "(--after=)--after=}[View entries after specified time]" "(--before=)--before=}[View entries before specified time]" {-o,--output=}"[Output to export format]" {-s,--section=}"[Specify a section]" {-t,--times}"[Show time intervals on @done tasks]" "(--tag_sort=)--tag_sort=}[Sort tags by]" "(--totals)--totals}[Show time totals at the end of output]" )
            ;;
            undo) 
                args=( {-f,--file=}"[Specify alternate doing file]" )
            ;;
            view) 
                args=( "(--after=)--after=}[View entries newer than date]" {-b,--bool=}"[Tag boolean]" "(--before=)--before=}[View entries older than date]" {-c,--count=}"[Count to display]" "(--case=)--case=}[Case sensitivity for search string matching [(c)ase-sensitive]" "(--color)--color}[Include colors in output]" {-i,--interactive}"[Select from a menu of matching entries to perform additional operations]" "(--not)--not}[Show items that *dont* match search stringt* match search string]" {-o,--output=}"[Output to export format]" "(--only_timed)--only_timed}[Only show items with recorded time intervals]" {-s,--section=}"[Section]" "(--search=)--search=}[Search filter]" {-t,--times}"[Show time intervals on @done tasks]" "(--tag=)--tag=}[Tag filter]" "(--tag_order=)--tag_order=}[Tag sort direction]" "(--tag_sort=)--tag_sort=}[Sort tags by]" "(--totals)--totals}[Show intervals with totals at the end of output]" {-x,--exact}"[Force exact search string matching]" )
            ;;
            views) 
                args=( {-c,--column}"[List in single column]" )
            ;;
            wiki) 
                args=( "(--after=)--after=}[Include entries newer than date]" {-b,--bool=}"[Tag boolean]" "(--before=)--before=}[Include entries older than date]" {-f,--from=}"[Date range to include]" "(--only_timed)--only_timed}[Only show items with recorded time intervals]" {-s,--section=}"[Section to rotate]" "(--search=)--search=}[Search filter]" "(--tag=)--tag=}[Tag filter]" )
            ;;
            yesterday) 
                args=( "(--after=)--after=}[View entries after specified time]" "(--before=)--before=}[View entries before specified time]" {-o,--output=}"[Output to export format]" {-s,--section=}"[Specify a section]" {-t,--times}"[Show time intervals on @done tasks]" "(--tag_order=)--tag_order=}[Tag sort direction]" "(--tag_sort=)--tag_sort=}[Sort tags by]" "(--totals)--totals}[Show time totals at the end of output]" )
            ;;
    esac

    _arguments -s $args
}

