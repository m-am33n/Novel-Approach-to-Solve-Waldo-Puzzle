#include <iostream>
#include "opencv2/imgproc.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgcodecs.hpp"

using namespace std;
using namespace cv;

Mat sourceImage; 
Mat templateImage; 
Mat result;

//0: SQDIFF  
//1: SQDIFF NORMED 
//2: TM CCORR 
//3: TM CCORR NORMED 
//4: TM COEFF 
// 5: TM COEFF NORMED";

int match_method = 1;

void MatchingMethod();

int main( int argc, char** argv )
{
  sourceImage = imread( argv[1], IMREAD_COLOR );
  templateImage = imread( argv[2], IMREAD_COLOR );

  if(sourceImage.empty() || templateImage.empty())
  {
    cout << "Can't read one of the images" << endl;
    return -1;
  }

  namedWindow( "Source Image", WINDOW_NORMAL );
  xx:cout<<"\n\n\t0: SQDIFF\n\t1: SQDIFF NORMED \n\t2: TM CCORR\n\t3: TM CCORR NORMED\n\t4: TM COEFF\n\t5: TM COEFF NORMED\n\n\tEnter Option Number :";
  cin>>match_method;
  if(match_method>=0 && match_method <=5){
  	MatchingMethod();
  	waitKey(0);
  }
  else{
  	cout<<"\nInvalid Option Entered ";
  	goto xx;
  }
  return 0;
}

void MatchingMethod()
{
  Mat sourceImage_display;
  sourceImage.copyTo( sourceImage_display );

  int result_cols = sourceImage.cols - templateImage.cols + 1;
  int result_rows = sourceImage.rows - templateImage.rows + 1;

  result.create( result_rows, result_cols, CV_32FC1 );

  matchTemplate( sourceImage, templateImage, result, match_method); 

  normalize( result, result, 0, 1, NORM_MINMAX, -1 );

  double minVal, maxVal; 
  Point minLoc, maxLoc, matchLoc;

  minMaxLoc( result, &minVal, &maxVal, &minLoc, &maxLoc, Mat() );

  if( match_method  == TM_SQDIFF || match_method == TM_SQDIFF_NORMED ){ 
  	matchLoc = minLoc; 
  }
  else{ 
  	matchLoc = maxLoc; 
  }

  rectangle(sourceImage_display,matchLoc,Point(matchLoc.x + templateImage.cols,matchLoc.y + templateImage.rows),Scalar::all(0), 2, 8, 0);

  imshow( "Source Image", sourceImage_display );

  return;
}
