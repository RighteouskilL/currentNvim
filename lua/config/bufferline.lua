require('bufferline').setup {
	options = {
		mode = "buffers",
		numbers = function(opts)
			return string.format('%s|%s.)', opts.id, opts.raise(opts.ordinal))
		end,
		color_icons = true,
	}
}