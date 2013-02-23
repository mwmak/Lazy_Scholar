/* Copyright (c) 2012 Stuart MacMartin.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
* INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
* PARTICULAR PURPOSE AND NONINFRINGEMENT.
* IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
* OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

//FROM SCRATCHPATH sample code

#ifndef PAINT_HPP
#define PAINT_HPP

class QImage;

namespace Paint {

QImage drawPath();
QImage drawCircle(const QSize &size);
QImage drawSquare(const QSize &size);
void paintImage(QImage &image, QPoint lastPoint, QPoint endPoint);

}

#endif