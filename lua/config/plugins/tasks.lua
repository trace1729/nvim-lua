return {
	{
		'skywind3000/asynctasks.vim',
	},
	{
		'skywind3000/asyncrun.vim',
	},
	{
		'xiyaowong/transparent.nvim',
	},
	vim.cmd [[
	noremap <F6> :AsyncTask file-run<cr>
	noremap <F7> :AsyncTask file-build<cr>
	]]
}
