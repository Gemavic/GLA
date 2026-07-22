import { useState, useEffect } from 'react';
import { AuthProvider, useAuth } from './contexts/AuthContext';
import { SchoolStudentProvider } from './contexts/SchoolStudentContext';

import { Header } from './components/Header';
import Footer from './components/Footer';
import { AuthModal } from './components/AuthModal';
import { LeadCaptureModal } from './components/LeadCaptureModal';
import { ForgotPasswordModal } from './components/ForgotPasswordModal';
import SchoolStudentLoginModal from './components/SchoolStudentLoginModal';
import MattoWidget from './components/MattoWidget';

import { HomePage } from './pages/HomePage';
import { AboutPage } from './pages/AboutPage';
import { CoursesPage } from './pages/CoursesPage';
import { CourseDetailPage } from './pages/CourseDetailPage';
import { DashboardPage } from './pages/DashboardPage';
import TutorialsPage from './pages/TutorialsPage';
import TutorialProgramPage from './pages/TutorialProgramPage';
import { HowItWorksPage } from './pages/HowItWorksPage';
import { InstructorsPage } from './pages/InstructorsPage';
import TutorPage from './pages/TutorPage';
import ExamSimulatorPage from './pages/ExamSimulatorPage';
import GPACalculatorPage from './pages/GPACalculatorPage';
import { ResourcesPage } from './pages/ResourcesPage';
import SessionRecordingsPage from './pages/SessionRecordingsPage';
import StudentDashboardPage from './pages/StudentDashboardPage';
import AccessGatePage from './pages/AccessGatePage';
import ProfileSetupPage from './pages/ProfileSetupPage';
import { ResetPasswordPage } from './pages/ResetPasswordPage';
import SchoolPortalPage from './pages/school/SchoolPortalPage';
import AdminStudentApprovalsPage from './pages/AdminStudentApprovalsPage';
import AdminStudentMonitoringPage from './pages/AdminStudentMonitoringPage';
import AdminContentSecurityPage from './pages/AdminContentSecurityPage';
import AdminSchoolStudentsPage from './pages/AdminSchoolStudentsPage';
import AdminTutorsPage from './pages/AdminTutorsPage';
import AdminBulkImportPage from './pages/AdminBulkImportPage';
import TutorSessionPage from './pages/TutorSessionPage';
import JUPEBRegistrationPage from './pages/JUPEBRegistrationPage';
import JUPEBEnrollmentPage from './pages/JUPEBEnrollmentPage';
import AdminJUPEBEnrollmentsPage from './pages/AdminJUPEBEnrollmentsPage';
import AILiveClassPage from './pages/AILiveClassPage';

export default function App() {
  return (
    <AuthProvider>
      <SchoolStudentProvider>
        <AppRouter />
      </SchoolStudentProvider>
    </AuthProvider>
  );
}

const NO_FOOTER_PAGES = new Set([
  'cbt-exams', 'admin-approvals', 'admin-monitoring',
  'admin-content-security', 'admin-school-students', 'admin-tutors',
  'admin-bulk-import',
  'recordings', 'tutor-session', 'jupeb-registration', 'jupeb-enrollment',
  'admin-jupeb-enrollments', 'ai-live-class',
]);

function AppRouter() {
  const { loading, user, accessStatus } = useAuth();
  const [currentPage, setCurrentPage] = useState('home');
  const [currentSlug, setCurrentSlug] = useState<string | undefined>();
  const [showAuthModal, setShowAuthModal] = useState(false);
  const [authModalMode, setAuthModalMode] = useState<'login' | 'signup'>('login');
  const [showLeadCapture, setShowLeadCapture] = useState(false);
  const [leadCaptureType, setLeadCaptureType] = useState<'consultation' | 'guide' | 'trial'>('consultation');
  const [showForgotPassword, setShowForgotPassword] = useState(false);
  const [showSchoolStudentLogin, setShowSchoolStudentLogin] = useState(false);

  useEffect(() => {
    const url = new URL(window.location.href);
    const page = url.searchParams.get('page');
    if (page === 'reset-password') setCurrentPage('reset-password');
    if (page === 'jupeb-registration') setCurrentPage('jupeb-registration');
    if (page === 'jupeb-enrollment') setCurrentPage('jupeb-enrollment');
    if (page === 'ai-live-class') setCurrentPage('ai-live-class');
  }, []);

  const handleNavigate = (page: string, slug?: string) => {
    setCurrentPage(page);
    setCurrentSlug(slug);
    window.scrollTo({ top: 0, behavior: 'smooth' });
    if (typeof window.gtag === 'function') {
      window.gtag('event', 'conversion', { send_to: 'AW-8306478180/-t_TCMK0mbwcEI6wy_ND' });
    }
  };

  const handleShowAuthModal = (mode: 'login' | 'signup') => {
    setAuthModalMode(mode);
    setShowAuthModal(true);
  };

  const handleShowLeadCapture = (type: 'consultation' | 'guide' | 'trial') => {
    setLeadCaptureType(type);
    setShowLeadCapture(true);
  };

  if (loading) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-slate-50">
        <div className="flex flex-col items-center gap-3">
          <div className="w-14 h-14 bg-gradient-to-br from-navy-700 to-teal-500 rounded-2xl flex items-center justify-center shadow-lg">
            <span className="text-2xl">🎓</span>
          </div>
          <p className="text-slate-500 text-sm font-medium">Loading Gemavic Academy...</p>
        </div>
      </div>
    );
  }

  const renderPage = () => {
    switch (currentPage) {
      case 'home':
        return <HomePage onNavigate={handleNavigate} onShowLeadCapture={handleShowLeadCapture} />;
      case 'about':
        return <AboutPage onShowLeadCapture={handleShowLeadCapture} />;
      case 'courses':
        return <CoursesPage onNavigate={handleNavigate} />;
      case 'course':
        return (
          <CourseDetailPage
            courseSlug={currentSlug ?? ''}
            onNavigate={handleNavigate}
            onAuthRequired={() => handleShowAuthModal('signup')}
          />
        );
      case 'dashboard':
        return user
          ? <DashboardPage onNavigate={handleNavigate} />
          : <HomePage onNavigate={handleNavigate} onShowLeadCapture={handleShowLeadCapture} />;
      case 'tutorials':
        return <TutorialsPage onNavigate={handleNavigate} />;
      case 'tutorial-program':
        return <TutorialProgramPage programId={currentSlug ?? ''} onNavigate={handleNavigate} />;
      case 'how-it-works':
        return <HowItWorksPage onNavigate={handleNavigate} onShowLeadCapture={handleShowLeadCapture} />;
      case 'instructors':
        return <InstructorsPage onShowTutorApplication={() => {}} />;
      case 'live-tutoring':
        return <TutorPage onNavigate={handleNavigate} />;
      case 'tutor-session':
        return <TutorSessionPage />;
      case 'profile-setup':
        return <ProfileSetupPage onComplete={() => handleNavigate('student-dashboard')} />;
      case 'cbt-exams':
        return <ExamSimulatorPage />;
      case 'gpa-calculator':
        return <GPACalculatorPage />;
      case 'resources':
        return <ResourcesPage onNavigate={handleNavigate} />;
      case 'recordings':
        return <SessionRecordingsPage />;
      case 'student-dashboard':
        return <StudentDashboardPage onNavigate={handleNavigate} />;
      case 'access-gate':
        return <AccessGatePage onNavigate={handleNavigate} />;
      case 'reset-password':
        return <ResetPasswordPage onNavigate={handleNavigate} />;
      case 'school-portal':
        return (
          <SchoolPortalPage
            schoolSlug={currentSlug ?? ''}
            onNavigate={handleNavigate}
            onShowStudentLogin={() => setShowSchoolStudentLogin(true)}
            onShowAuthModal={handleShowAuthModal}
          />
        );
      case 'admin-approvals':
        return <AdminStudentApprovalsPage />;
      case 'admin-monitoring':
        return <AdminStudentMonitoringPage />;
      case 'admin-content-security':
        return <AdminContentSecurityPage />;
      case 'admin-school-students':
        return <AdminSchoolStudentsPage />;
      case 'admin-tutors':
        return <AdminTutorsPage onNavigate={handleNavigate} />;
      case 'admin-bulk-import':
        return <AdminBulkImportPage />;
      case 'jupeb-registration':
        return <JUPEBRegistrationPage />;
      case 'jupeb-enrollment':
        return <JUPEBEnrollmentPage />;
      case 'admin-jupeb-enrollments':
        return <AdminJUPEBEnrollmentsPage onNavigate={handleNavigate} />;
      case 'ai-live-class':
        return <AILiveClassPage onNavigate={handleNavigate} />;
      default:
        return <HomePage onNavigate={handleNavigate} onShowLeadCapture={handleShowLeadCapture} />;
    }
  };

  const NO_HEADER_PAGES = new Set(['jupeb-registration', 'jupeb-enrollment', 'ai-live-class']);

  return (
    <>
      {!NO_HEADER_PAGES.has(currentPage) && (
        <Header
          onNavigate={handleNavigate}
          currentPage={currentPage}
          onShowAuthModal={handleShowAuthModal}
          onShowForgotPassword={() => setShowForgotPassword(true)}
        />
      )}

      <main>{renderPage()}</main>

      {!NO_FOOTER_PAGES.has(currentPage) && <Footer />}

      <MattoWidget />

      {showAuthModal && (
        <AuthModal
          isOpen={showAuthModal}
          onClose={() => setShowAuthModal(false)}
          initialMode={authModalMode}
          onShowForgotPassword={() => {
            setShowAuthModal(false);
            setShowForgotPassword(true);
          }}
        />
      )}

      {showLeadCapture && (
        <LeadCaptureModal
          isOpen={showLeadCapture}
          onClose={() => setShowLeadCapture(false)}
          offerType={leadCaptureType}
        />
      )}

      {showForgotPassword && (
        <ForgotPasswordModal
          isOpen={showForgotPassword}
          onClose={() => setShowForgotPassword(false)}
          onBack={() => {
            setShowForgotPassword(false);
            setShowAuthModal(true);
          }}
        />
      )}

      {showSchoolStudentLogin && (
        <SchoolStudentLoginModal
          isOpen={showSchoolStudentLogin}
          onClose={() => setShowSchoolStudentLogin(false)}
          onSuccess={() => setShowSchoolStudentLogin(false)}
        />
      )}
    </>
  );
}
