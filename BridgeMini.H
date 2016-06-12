/*
*********************************************************
*   Copyright (C) 2010 by Megawin Technology Co., Ltd.	*
*														*
*	Project		: MA101									* 
*	File format	: H file of the BridgeMini.DLL			*
*	Author		: Thomas Liu							*
*	Version		: V.1.05								*
*********************************************************

*/
// ----------------------------------------------------------------------------
// BridgeMini.H
// ----------------------------------------------------------------------------
// 提供給客戶開發應用程式時需要參考的訊息或結構
// ----------------------------------------------------------------------------
// ----------------------------------------------------------------------------
#ifndef __MEGAWIN_BridgeMini_DLL

#define __MEGAWIN_BridgeMini_DLL



// ----------------------------------------------------------------------------
// Function declaration
//

#ifdef BridgeMiniAPI
// All functions/variables are being exported     
#else
#define BridgeMiniAPI extern "C" __declspec(dllimport)
#endif



// If the function succeeds, the return value is zero.
// It means ERROR_SUCCESS.

#define USER_DEFINE_ERROR            ((DWORD   )0xE0000000L)

#define INSUFFICIENT_MOMORY_AVAILABLE           0xE0000001L
#define HIDD_GETATTRIBUTES_FAIL                 0xE0000002L
#define CANNOT_FINDE_THE_DEVICE_SPECIFIED       0xE0000003L
#define SEND_DEVICE_CHECKCODE_FAIL              0xE0000004L        
#define GET_DEVICE_CHECKCODE_FAIL               0xE0000005L   
#define CHECK_DEVICE_CHECKCODE_FAIL             0xE0000006L  
#define CALL_WRITE_DATA_TIMEOUT                 0xE0000007L  
#define CALL_READ_DATA_TIMEOUT                  0xE0000008L  
#define ALLOCATE_DEVICE_QUEUE_FAIL              0xE0000009L 
#define GET_INPUT_REPORT_SIZE_FAIL              0xE000000AL
#define DELETE_INPUT_QUEUE_FAIL                 0xE000000BL

#define	UNKNOWN_FUNCTION_TYPE					0xE000000CL
#define UNKNOWN_MODE_TYPE						0xE000000DL
#define SET_CMD_FAIL							0xE000000EL
#define HIDD_SET_FEATURE_FAIL                   0xE000000FL
#define	DEVICE_BUSY								0xE0000010L
#define GET_CMD_FAIL							0xE0000011L
#define OPEN_EXISTING_RETURNED					0xE0000012L
#define INTERNAL_THREAD_SHUTDOWN_FAIL           0xE0000013L
#define IIC_DEVICEADDRESS_FAIL					0xE0000014L
#define	IIC_DATA_FAIL							0xE0000015L
#define	IIC_TIMEOUT_FAIL						0xE0000016L
#define INVALID_MODE							0xE0000017L
#define HIDD_GET_FEATURE_FAIL					0xE0000018L
#define IIC_SIZE_ERROR							0xE0000019L
#define UART_WRITE_TIME_OUT						0XE0000020L
#define	IIC_INITIAL_FAIL						0xE0000021L				
#define	DEVICE_BUSY_1							0xE0000022L
#define	DEVICE_BUSY_2							0xE0000023L
#define	WRITE_DATA_FAIL							0xE0000024L
#define	READ_DATA_FAIL							0xE0000025L
#define	IIC_SIZE_EXCEEDS_64K					0xE0000026L
#define	IIC_TIMEOUT_EXCEEDS_65_SECONDS			0xE0000027L


enum eModeType{
	
	eUART		= 0x01,
	eIIC		= 0x02,
	eSPI		= 0x03,
	eGPIO		= 0x04,
		
};

typedef struct _tag_IO
{
	BYTE P0;
	BYTE P1;
	BYTE P2;
	BYTE P3;
	BYTE P4;
}PortIO;

typedef struct _tag_IO_M
{
	BYTE Low_Nibble_Control;
	BYTE Low_Nibble_Selector;
	BYTE Hi_Nibble_Control;
	BYTE Hi_Nibble_Selector;
}IO_M;



typedef struct  _MW_BridgeMini
{ 
    DWORD VID;			        // Need to match user device's "Vendor ID".
    DWORD PID;			        // Need to match user device's "Product ID".
    DWORD ReadTimeOut;		    // Specifies the read data time-out interval, in milliseconds.
    DWORD WriteTimeOut;		    // Specifies the write data time-out interval, in milliseconds.    
    HANDLE Handle;              // Do not modify this value, reserved for DLL
	
} MW_BridgeMini;

BridgeMiniAPI DWORD __stdcall 
MA101_WriteData(	MW_BridgeMini	*pMwBridge, 
					LPBYTE			lpBuffer, 
					DWORD			nNumberOfBytesToWrite, 
					LPDWORD			lpNumberOfBytesWritten);

BridgeMiniAPI DWORD __stdcall 
MA101_ReadData(	MW_BridgeMini	*pMwBridge, 
				LPBYTE			lpBuffer, 
				DWORD			nNumberOfBytesToRead, 
				LPDWORD			lpNumberOfBytesRead);


BridgeMiniAPI DWORD __stdcall 
MA101_SetMode(	MW_BridgeMini	*pMwBridge, 
				LPBYTE			lpBuffer, 
				BYTE			BufferSize );

BridgeMiniAPI DWORD __stdcall 
MA101_SetIO_T(	MW_BridgeMini	*pMwBridge, 
				PortIO			PxT );

BridgeMiniAPI DWORD __stdcall 
MA101_SetIO_pT(	MW_BridgeMini	*pMwBridge, 
				PortIO			*PxT );

BridgeMiniAPI DWORD __stdcall 
MA101_SetIO_M(	MW_BridgeMini	*pMwBridge, 
				IO_M			PxM[5] );
BridgeMiniAPI
DWORD __stdcall 
MA101_SetIO_V(	MW_BridgeMini	*pMwBridge, 
				PortIO			PxV );

BridgeMiniAPI
DWORD __stdcall 
MA101_SetIO_pV(	MW_BridgeMini	*pMwBridge, 
				PortIO			*PxV );

BridgeMiniAPI DWORD __stdcall	
MA101_GetMode(	MW_BridgeMini	*pMwBridge, 
				LPBYTE			lpBuffer);

BridgeMiniAPI DWORD __stdcall 
MA101_GetIO_T(	MW_BridgeMini	*pMwBridge, 
				PortIO			*PxT );

BridgeMiniAPI DWORD __stdcall 
MA101_GetIO_M(	MW_BridgeMini	*pMwBridge, 
				IO_M			*PxM );

BridgeMiniAPI DWORD __stdcall 
MA101_GetIO_V(	MW_BridgeMini	*pMwBridge, 
				PortIO			*PxV );

BridgeMiniAPI DWORD __stdcall 
MA101_GetFirmwareVersion (	MW_BridgeMini	*pMwBridge, 
							WORD			*wVersion );

BridgeMiniAPI DWORD __stdcall 
MA101_GetPortStatus(	MW_BridgeMini	*pMwBridge,
						BYTE			*PortStatus);

BridgeMiniAPI DWORD __stdcall 
MA101_ResetDevice (	MW_BridgeMini *pMwBridge);

BridgeMiniAPI DWORD __stdcall 
MA101_ClearDevBuffer( MW_BridgeMini *pMwBridge);

BridgeMiniAPI DWORD __stdcall 
MA101_ConnectBridge(	MW_BridgeMini	*pMwBridge, 
						DWORD			ndex );

BridgeMiniAPI DWORD __stdcall 
MA101_DisconnectBridge(	MW_BridgeMini *pMwBridge );

BridgeMiniAPI DWORD __stdcall 
MA101_ClearBridgeBuffer( MW_BridgeMini *pMwBridge );

BridgeMiniAPI DWORD __stdcall 
MA101_GetBridgeDLLVerion(void);

BridgeMiniAPI DWORD __stdcall 
MA101_GetBridgeDLLVersion(void);

#endif