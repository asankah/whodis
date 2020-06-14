" Copyright 2018 The Chromium Authors. All rights reserved.
" Use of this source code is governed by a BSD-style license that can be
" found in the LICENSE file.
"
" Scott Graham <scott.whodis@h4ck3r.net>

if !has('python')
  s:ErrMsg('Error: vim with +python required')
  finish
endif

if !exists('g:WhodisKey')
  if has('mac')
    let g:WhodisKey = '<D-A>'
  else
    let g:WhodisKey = '<C-S-A>'
  endif
endif

if !exists('g:WhodisFilterProgram')
  let WhodisFilterProgram = ''
endif

if !exists('g:WhodisHoverAttribute')
  let WhodisHoverAttribute = 'bold'
endif

execute 'map <silent>' . g:WhodisKey . ' :call whodis#DoIt()<cr>'
