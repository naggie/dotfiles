function fish_prompt --description 'Write out the prompt'

	set -l last_status $status

	# Just calculate these once, to save a few cycles when displaying the prompt
	if not set -q __fish_prompt_hostname
		set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
	end

	if not set -q -g __fish_classic_git_functions_defined
		set -g __fish_classic_git_functions_defined

		function __fish_repaint_user --on-variable fish_color_user --description "Event handler, repaint when fish_color_user changes"
			if status --is-interactive
				set -e __fish_prompt_user
				commandline -f repaint ^/dev/null
			end
		end

		function __fish_repaint_host --on-variable fish_color_host --description "Event handler, repaint when fish_color_host changes"
			if status --is-interactive
				set -e __fish_prompt_host
				commandline -f repaint ^/dev/null
			end
		end

		function __fish_repaint_status --on-variable fish_color_status --description "Event handler; repaint when fish_color_status changes"
			if status --is-interactive
				set -e __fish_prompt_status
				commandline -f repaint ^/dev/null
			end
		end
	end

	set -l delim \n\$

	echo -n -s \n (set_color green) $USER @ $__fish_prompt_host $__fish_prompt_hostname (set_color normal) ' ' (set_color --bold blue) (pwd) (set_color normal) (set_color yellow) (__fish_git_prompt) (set_color normal) $delim ' '

end

