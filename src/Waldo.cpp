#include <iostream>
#include "opencv2/imgproc.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgcodecs.hpp"

using namespace std;
using namespace cv;

Mat sourceImage; 
Mat templateImage; 
Mat result;

int match_method;
int max_Trackbar = 5;

void MatchingMethod( int, void* );

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

  const char* trackbar_label = "Method: \n 0: SQDIFF \n 1: SQDIFF NORMED \n 2: TM CCORR \n 3: TM CCORR NORMED \n 4: TM COEFF \n 5: TM COEFF NORMED";
  createTrackbar( trackbar_label, "Source Image", &match_method, max_Trackbar, MatchingMethod );

  MatchingMethod( 0, 0 );

  waitKey(0);
  return 0;
}

void MatchingMethod( int, void* )
{
  Mat sourceImage_display;
  sourceImage.copyTo( sourceImage_display );

  int result_cols = sourceImage.cols - templateImage.cols + 1;
  int result_rows = sourceImage.rows - templateImage.rows + 1;

  result.create( result_rows, result_cols, CV_32FC1 );

  matchTemplate( sourceImage, templateImage, result, match_method); 

  normalize( result, result, 0, 1, NORM_MINMAX, -1 );

  double minVal; double maxVal; Point minLoc; Point maxLoc;
  Point matchLoc;

  minMaxLoc( result, &minVal, &maxVal, &minLoc, &maxLoc, Mat() );

  if( match_method  == TM_SQDIFF || match_method == TM_SQDIFF_NORMED )
    { matchLoc = minLoc; }
  else
    { matchLoc = maxLoc; }

  rectangle( sourceImage_display, matchLoc, Point( matchLoc.x + templateImage.cols , matchLoc.y + templateImage.rows ), Scalar::all(0), 2, 8, 0 );
  rectangle( result, matchLoc, Point( matchLoc.x + templateImage.cols , matchLoc.y + templateImage.rows ), Scalar::all(0), 2, 8, 0 );

  imshow( "Source Image", sourceImage_display );

  return;
}
