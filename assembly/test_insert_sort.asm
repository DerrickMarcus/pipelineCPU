# 使用 Verilog 模拟插入排序算法时，需要对原先的代码进行一些修改
# 读取文件 a.in 部分，提将数据准备在 DataMemory.v 中，默认从buffer=0地址开始存储

# test_insert_sort.asm

main:
    li $a0, 0 # buffer地址加载到a0
    lw $a1, 0($a0) # insertion_sort参数a1=N=buffer[0]，排序元素个数
    addi $a0, $a0, 4 # insertion_sort参数a0=buffer[1]的地址，即v[0]的地址
    addi $s0, $0, 0 # compare_count=0
    jal insertion_sort_ready # 调用insertion_sort


end:
    li $t0, 0 # t0=buffer地址
    sw $s0, 0($t0) # buffer[0]=compare_count


exit:
    j exit


# insert_sort函数参数：a0为v[0]地址，a1为序列个数N
insertion_sort_ready:
    addi $sp, $sp, -12 # 栈指针向下移动12
    sw $ra, 8($sp) # 保存ra
    sw $a0, 4($sp) # 保存a0
    sw $a1, 0($sp) # 保存a1
    addi $s1, $0, 1 # 循环次数计数i，初始为1


insertion_sort_loop:
    slt $t1, $s1, $a1 # t1=(i<N)
    beq $t1, $0, insertion_sort_end # i>=N退出循环，i<N继续循环
    addi $a2, $s1, 0 # search参数a2=i
    jal search_ready # 调用search
    addi $a3, $v0, 0 # insert参数a3=place，即插入位置k
    jal insert_ready # 调用insert
    addi $s1, $s1, 1 # i++
    j insertion_sort_loop # 下一轮循环


insertion_sort_end:
    lw $a1, 0($sp) # 恢复a1
    lw $a0, 4($sp) # 恢复a0
    lw $ra, 8($sp) # 恢复ra
    addi $sp, $sp, 12 # 恢复栈指针位置
    jr $ra # 返回


# search函数参数：a0为v[0]地址，a2为待插入元素下标i
search_ready:
    sll $t1, $a2, 2 # t1=4*i
    add $t1, $a0, $t1 # t1=v[i]的地址
    lw $t1, 0($t1) # t1=v[i]=tmp
    addi $t2, $a2, -1 # 循环次数计数t2=j，初始为i-1


search_loop:
    slt $t3, $t2, $0 # t3=(j<0)
    bne $t3, $0, search_end # j<0退出循环，j>=0继续循环
    addi $s0, $s0, 1 # compare_count++
    sll $t3, $t2, 2 # t3=4*j
    add $t3, $a0, $t3 # t3=v[j]的地址
    lw $t3, 0($t3) # t3=v[j]
    slt $t4, $t1, $t3 # t4=(v[j]>tmp)
    beq $t4, $0, search_end # if v[j]<=tmp,break
    addi $t2, $t2, -1 # j--
    j search_loop # 下一轮循循环


search_end:
    addi $v0, $t2, 1 # return j+1
    jr $ra # 返回


# insert函数参数：a0为v[0]地址，a2为待插入元素下标i，a3为插入位置k
insert_ready:
    sll $t1, $a2, 2 # t1=4*i
    add $t1, $a0, $t1 # t1=v[i]的地址
    lw $t1, 0($t1) # t1=tmp=v[i]
    addi $t2, $a2, -1 # 循环次数计数t2=j，初始为i-1


insert_loop:
    slt $t3, $t2, $a3 # t3=(j<k)
    bne $t3, $0, insert_end # j<k退出循环，j>=k继续循环
    sll $t3, $t2, 2 # t3=4*j
    add $t3, $a0, $t3 # t3=v[j]的地址
    lw $t4, 0($t3) # t4=v[j]
    sw $t4, 4($t3) # v[j+1]=v[j]
    addi $t2, $t2, -1 # j--
    j insert_loop # 下一轮循环


insert_end:
    sll $t2, $a3, 2 # t2=4*k
    add $t2, $a0, $t2 # t2=v[k]的地址
    sw $t1, 0($t2) # v[k]=tmp
    jr $ra # 返回
