def calcuate_initial_CRC(s):
    # s = "46af6449"
    print("initial value is " + s)
    i = int(s, 16)
    sb = format(i,'0>32b')
    byte1_r = sb[7::-1]
    byte2_r = sb[15:7:-1]
    byte3_r = sb[23:15:-1]
    byte4_r = sb[31:23:-1]
    # print(sb)
    # print(byte1_r)
    # print(byte2_r)
    # print(byte3_r)
    # print(byte4_r)

    byte_concat = byte1_r + byte2_r + byte3_r + byte4_r
    # print(byte_concat)
    result = ''
    for j in range(len(byte_concat)):
        if (byte_concat[j] == '0'):
            result += '1'
        else:
            result += '0'

    print(hex(int(result,2)))

init_value = {}
init_value[0] = 'ffffffff'
init_value[1] = '955a6162'
init_value[2] = '68b932f5'
init_value[3] = '339fde2f'
init_value[4] = '46af6449'
init_value[5] = '816474c5'
init_value[6] = '09b93859'
init_value[7] = '9bf1a90f'

for j in range(8):
    calcuate_initial_CRC(init_value[j])

# print(result)
# print(hex(int(result,2)))
# print(sb[::-1])

# print(f'{0x46af6449:0>32b}')

# initial value is ffffffff
# 0x0
# initial value is 955a6162
# 0x56a579b9
# initial value is 68b932f5
# 0xe962b350
# initial value is 339fde2f
# 0x3306840b
# initial value is 46af6449
# 0x9d0ad96d
# initial value is 816474c5
# 0x7ed9d15c
# initial value is 09b93859
# 0x6f62e365
# initial value is 9bf1a90f
# 0x26706a0f