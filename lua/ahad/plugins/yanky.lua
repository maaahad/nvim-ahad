 return {
   "gbprod/yanky.nvim", 
   opts = {

   }, 
   config = function()
     local yanky = require("yanky")
     yanky.setup({
       highlight = {
         on_put = true, 
         on_yank = true, 
         timer = 500, 
       }, 
     })
   end
 }
