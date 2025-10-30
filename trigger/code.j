#include "scripts/shared/util.j"

library Base initializer init
    private function init takes nothing returns nothing
        call print("初始化完成，正在執行主程式...")
    endfunction
endlibrary