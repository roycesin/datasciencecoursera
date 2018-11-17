#include "../../../../src/rcom_srv.h"
//#include "../src/rcom_srv_i.c"

/*@FUNC**********************************************************************/
/** program entry.
*
* @param argc the number of command line parameters
* @param argv the array of command line parameters
* @param envp the array of environment settings
* @return int exit code
* @exception 
* @see       
*//***************************************************************************
** 02-10-23 | TB | CREATED
*****************************************************************************/
int main
(
  int argc
 ,char ** argv
 ,char ** envp
)
{
  LPVOID obj1;
  IStatConnector* obj = 0;
  HRESULT hr;
  CoInitialize(0);
  hr = CoCreateInstance(&CLSID_InternalConnector,0,CLSCTX_ALL,
			&IID_IUnknown,(LPVOID*) &obj);
  if(FAILED(hr)) {
    printf("error %10lx creating COM object\n",hr);
    return 0;
  }
  printf("successfully created COM object\n");
  hr = obj->lpVtbl->QueryInterface(obj,&IID_IDispatch,&obj1);
  printf("querying for IDispatch: %10lx\n",hr);
  hr = obj->lpVtbl->QueryInterface(obj,&IID_IStatConnector,&obj1);
  printf("querying for IStatConnector: %10lx\n",hr);

  CoUninitialize();
}
