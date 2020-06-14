" Copyright 2018 The Chromium Authors. All rights reserved.
" Use of this source code is governed by a BSD-style license that can be
" found in the LICENSE file.
"
" Scott Graham <scott.whodis@h4ck3r.net>

let s:script_path = expand('<sfile>:p:h')

execute 'pyxf ' . fnameescape(s:script_path . '/whodis.py')

function! whodis#DoIt()
  pythonx Whodis()
end
